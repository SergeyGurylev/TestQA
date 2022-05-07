﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Финальные практические задания

	Проверка движений документа РасходТовара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверяю движения документа РасходТовара в валюте

	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$СсылкаНаДокументПродажаТовара$"
		
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Контрагент'  | 'Сумма'  | 'Валюта' |
		| '*'      | '*'           | '1'            | 'Мосхлеб ОАО' | '160,45' | 'EUR'    |
	
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Покупатель'  | 'Товар'   | 'Количество' | 'Сумма'    |
		| '*'      | '*'           | '1'            | 'Мосхлеб ОАО' | 'Колбаса' | '100,00'     | '5 000,00' |
		| '*'      | '*'           | '2'            | 'Мосхлеб ОАО' | 'Йогурт'  | '200,00'     | '7 000,00' |
	
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	Тогда таблица "Список" стала равной:
		| 'Период' | 'Склад' | 'Регистратор' | 'Номер строки' | 'Товар'   | 'Количество' |
		| '*'      | 'Малый' | '*'           | '1'            | 'Колбаса' | '100,00'     |
		| '*'      | 'Малый' | '*'           | '2'            | 'Йогурт'  | '200,00'     |
	
	И я закрываю текущее окно