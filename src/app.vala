using GLib;
using Posix;
using Json;

class App{
    static int main(string[] args){
        File projectConfig = File.new_for_path(FileUtilities.home_dir("/.anjing"));

        if (!projectConfig.query_exists()){
            FileUtilities.create_config_directory(FileUtilities.home_dir("/.anjing"));
        };


        return 0;

    }
}