Backup Script

Bash-скрипт для автоматического бэкапа файлов с логированием и ротацией старых архивов.

Что делает
- Архивирует папку в .tar.gz с датой и временем в названии
- Логирует результат (успех/ошибка) в backup.log
- Автоматически удаляет старые бэкапы, оставляя только 3 последних

Как запустить
chmod +x backup.sh
./backup.sh

=================================================================================================

A Bash script for automated file backups, featuring logging and rotation of old archives.

What it does:
- Archives a directory into a .tar.gz file with a timestamp in the filename.
- Logs the result (success/error) to backup.log.
- Automatically deletes old backups, keeping only the 3 most recent ones.

How to run it:
chmod +x backup.sh
./backup.sh
