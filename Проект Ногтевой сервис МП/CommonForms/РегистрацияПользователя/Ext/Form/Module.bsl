﻿&НаКлиенте
Процедура Зарегистрироваться(Команда)
	Если ЭтаФорма.Логин = "" Тогда
		Сообщить("Введите логин пользователя!");
		Возврат;
	КонецЕсли;
	АутентификацияИАвторизация.ВыполнитьРегистрацию(ЭтаФорма.Логин,ЭтаФорма.НомерТелефона);
	ЗавершитьРаботуСистемы(Ложь, Истина);
КонецПроцедуры
