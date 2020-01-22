-- процедура инициализации
-- SP_INIT_SOURCE 100;

DECLARE @ROWCOUNT INT; -- Количество строк в операторе
DECLARE @MAXCOUNT INT; -- Максимальное количество строк в оператор
DECLARE @START DATETIME2; -- Время начала выполнения
DECLARE @ATTEMPT INT; -- Номер повторения
DECLARE @MAXATTEMPT INT; -- Количество повторений

SET @MAXATTEMPT=2

