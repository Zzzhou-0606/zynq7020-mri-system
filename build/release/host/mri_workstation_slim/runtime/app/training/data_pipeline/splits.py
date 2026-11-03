"""One subject per primary-analysis record; D and S share every fold."""

from collections import Counter

import numpy as np
from sklearn.model_selection import StratifiedKFold


def nested_folds(records, outer_folds, inner_folds, seed):
    ids = [(r['dataset'], r['subject_id']) for r in records]
    if len(set(ids)) != len(ids):
        raise ValueError('Primary manifest must contain exactly one visit per subject')
    labels = np.asarray([r['final_label'] for r in records], dtype=int)
    counts = Counter(labels.tolist())
    if set(counts) != {0, 1, 2} or min(counts.values()) < outer_folds:
        raise ValueError(f'Insufficient subjects for {outer_folds} outer folds: {dict(counts)}')
    result = []
    outer = StratifiedKFold(outer_folds, shuffle=True, random_state=seed)
    for fold, (train, test) in enumerate(outer.split(labels, labels)):
        if min(Counter(labels[train]).values()) < inner_folds:
            raise ValueError(f'Outer fold {fold} cannot support {inner_folds} inner folds')
        inner = StratifiedKFold(inner_folds, shuffle=True, random_state=seed + fold + 1)
        inner_splits = []
        for fit, validation in inner.split(train, labels[train]):
            inner_splits.append({'train': train[fit].tolist(), 'validation': train[validation].tolist()})
        result.append({'fold': fold, 'train': train.tolist(), 'test': test.tolist(), 'inner': inner_splits})
    validate_folds(records, result)
    return result


def validate_folds(records, folds):
    ids = [(r['dataset'], r['subject_id']) for r in records]
    if len(ids) != len(set(ids)):
        raise ValueError('Repeated primary subject identity')
    all_indices = set(range(len(records)))
    seen = []
    for fold in folds:
        train, test = set(fold['train']), set(fold['test'])
        if train & test or train | test != all_indices:
            raise ValueError('Invalid outer partition')
        seen.extend(test)
        for inner in fold['inner']:
            fit, validation = set(inner['train']), set(inner['validation'])
            if fit & validation or fit | validation != train:
                raise ValueError('Invalid inner partition or outer-test leakage')
    if sorted(seen) != sorted(all_indices):
        raise ValueError('Every subject must appear in exactly one outer test fold')
