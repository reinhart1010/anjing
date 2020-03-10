using GLib;
using GLib.DirUtils;

class FileUtilities : Object {
    public static string home_dir(string dir){
        var res = new StringBuilder();
        if (dir.substring(0, 1) != "/") res.prepend("/");
        res.append(dir);
        return Environment.get_home_dir () + res.str;
    }
    public static int create_config_directory(string path){
        File projectConfig = File.new_for_path(path);
        print("Creating configuration folder at " + path + " \n");
            try {
                projectConfig.make_directory_with_parents();
            } catch (Error e){
                print("ERROR: Unable to create configuration folder:\n" + e.message + "\n");
                return 1;
            };
        return 0;
    }
}