### Adding some bash/shell script utils

Adding some bash utils to install in your laptop or also some snippets to help with some common fancy bash scripts

#### Adding git hook to push after commit

Run following command to automatically ask to push branch after commig

`ln -s $ORIGIN_PATH/bash_utils/git_hooks/post-commit $DESTINATION_PATH/.git/hooks/post-commit`

#### Adding a script to cronjob

Create an `.sh` file of your own creation in `.cronjobs` folder.
This folder must be a symblink to home path `ln -s $PERSONAL/bash_utils/.cronjobs $HOME`.
Give files innside the folder execution privileges with `chmod +x notification-off.sh`

Use [cron guru](https://crontab.guru/) to get schedule expression

In the sample, for `notification-off.sh` file, use `25 17 * * 1-5`

In a more human way `At 17:25 on every day-of-week from Monday through Friday.`

Edit crontab with `crontab -e`

Paste at the end new lines of your desire. First schedule expression, then, full path to script

`25 17 * * 1-5 ~/.cronjobs/notification-off.sh`
