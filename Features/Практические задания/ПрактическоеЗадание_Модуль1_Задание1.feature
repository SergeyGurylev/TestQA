#language: ru

Функционал: Практические задания к Модулю 1

После завершения первого модуля необходимо выполнить практические задания:
1. Написать сценарный тест на проверку расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены. Выгрузить созданный тест в репозиторий на GitHub. В качестве отчета пришлите ссылку на созданный feature файл в репозитории. 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: тест на проверку расчета суммы документа Заказ (подсистема Продажи) при изменении количества и цены
* Открытие формы нового документа
	И Я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Когда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем "ФормаСоздать"
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Закупочная'
* Заполнение табличной части
	И в таблице 'Товары' я нажимаю на кнопку с именем "ТоварыДобавить"
	* Выбор товара 'Торт'
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
		Тогда открылось окно "Товары"
		И в таблице  "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000011' | 'Продукты'        |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице  "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000032' | 'Торт '        |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'

	//Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "100,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "5"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар' | 'Цена'   | 'Количество' | 'Сумма'  |
		| 'Торт ' | '100,00' | '5'          | '500,00' |
* Закрытие формы нового документа без записи
	И Я закрываю окно 'Заказ (создание) *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
