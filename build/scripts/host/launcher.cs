using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Windows.Forms;

class Launcher {
    static string Quote(string value) {
        var b = new StringBuilder("\""); int slashes = 0;
        foreach (char c in value) {
            if (c == '\\') { slashes++; continue; }
            b.Append('\\', c == '"' ? slashes * 2 + 1 : slashes);
            b.Append(c); slashes = 0;
        }
        b.Append('\\', slashes * 2); return b.Append('"').ToString();
    }
    [STAThread]
    static int Main(string[] args) {
        string root = AppDomain.CurrentDomain.BaseDirectory;
        try {
            string python = Path.Combine(root, "runtime", "pythonw.exe");
            if (!File.Exists(python)) throw new IOException("缺少 runtime 文件夹，请完整解压软件后运行。");
            Directory.CreateDirectory(Path.Combine(root, "data", "logs"));
            var command = new StringBuilder("-B -m host.packaging.bootstrap");
            foreach (var arg in args) command.Append(" ").Append(Quote(arg));
            var info = new ProcessStartInfo(python, command.ToString());
            info.WorkingDirectory = root; info.UseShellExecute = false; info.CreateNoWindow = true;
            info.EnvironmentVariables.Remove("PYTHONHOME");
            info.EnvironmentVariables.Remove("PYTHONPATH");
            info.EnvironmentVariables.Remove("SSLKEYLOGFILE");
            using (var process = Process.Start(info)) {
                process.WaitForExit();
                if (process.ExitCode != 0) MessageBox.Show("程序未正常结束。请查看 data\\logs 中的运行日志。", "MRI 工作台", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return process.ExitCode;
            }
        } catch (Exception e) {
            MessageBox.Show("无法启动 MRI 工作台：\n" + e.Message + "\n请将完整文件夹放到可写目录。", "MRI 工作台", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return 1;
        }
    }
}
