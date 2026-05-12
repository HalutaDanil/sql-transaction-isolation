# SQL: Transaction Isolation Levels

> Уровни изоляции транзакций и аномалии

## О проекте

Практическое изучение уровней изоляции транзакций в PostgreSQL: демонстрация грязного чтения, неповторяющегося чтения, фантомного чтения и потерянных обновлений.

## Что изучено

| Задача | Тема | Уровень изоляции |
|--------|------|-----------------|
| `ex00` | Грязное чтение (Dirty Read) | `READ UNCOMMITTED` |
| `ex01` | Неповторяющееся чтение | `READ COMMITTED` |
| `ex02` | Фантомное чтение | `REPEATABLE READ` |
| `ex03` | Потерянное обновление | `SERIALIZABLE` |
| `ex04` | Демонстрация на практике | Все уровни |
| `ex05` | `FOR UPDATE` | Блокировки строк |
| `ex06` | Deadlock | Взаимные блокировки |
| `ex07` | `SKIP LOCKED` | Очереди на SQL |

## Пример: демонстрация фантомного чтения

```sql
-- Сессия 1
BEGIN ISOLATION LEVEL REPEATABLE READ;
SELECT COUNT(*) FROM person_visits; -- 10

-- Сессия 2
INSERT INTO person_visits VALUES (...);
COMMIT;

-- Сессия 1
SELECT COUNT(*) FROM person_visits; -- всё ещё 10 (REPEATABLE READ)
COMMIT;
SELECT COUNT(*) FROM person_visits; -- теперь 11
```

## Технологии

- **PostgreSQL**
- **ACID**, **Transaction Isolation Levels**

---

*Решено в рамках обучения работе с базами данных*
