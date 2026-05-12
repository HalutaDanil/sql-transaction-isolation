<div align="center">

# SQL Transaction Isolation

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Practical study of transaction isolation levels in PostgreSQL: dirty read, non-repeatable read, phantom read, and lost updates.

### 🛠️ Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

### ✨ Features

| Exercise | Topic | Isolation Level |
|----------|-------|----------------|
| ex00 | Dirty Read | READ UNCOMMITTED |
| ex01 | Non-repeatable Read | READ COMMITTED |
| ex02 | Phantom Read | REPEATABLE READ |
| ex03 | Lost Update | SERIALIZABLE |
| ex04 | Practical demonstration | All levels |
| ex05 | FOR UPDATE | Row locks |
| ex06 | Deadlock | Mutual locks |
| ex07 | SKIP LOCKED | SQL queues |

### 🚀 Quick Start

```sql
-- Session 1
BEGIN ISOLATION LEVEL REPEATABLE READ;
SELECT COUNT(*) FROM person_visits; -- 10

-- Session 2 inserts...

-- Session 1
SELECT COUNT(*) FROM person_visits; -- still 10
COMMIT;
SELECT COUNT(*) FROM person_visits; -- now 11
```

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Практическое изучение уровней изоляции транзакций в PostgreSQL: грязное чтение, неповторяющееся чтение, фантомное чтение и потерянные обновления.

### 🛠️ Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

### ✨ Возможности

| Задача | Тема | Уровень изоляции |
|--------|------|-----------------|
| ex00 | Грязное чтение | READ UNCOMMITTED |
| ex01 | Неповторяющееся чтение | READ COMMITTED |
| ex02 | Фантомное чтение | REPEATABLE READ |
| ex03 | Потерянное обновление | SERIALIZABLE |
| ex04 | Демонстрация на практике | Все уровни |
| ex05 | FOR UPDATE | Блокировки строк |
| ex06 | Deadlock | Взаимные блокировки |
| ex07 | SKIP LOCKED | Очереди на SQL |

### 🚀 Быстрый старт

```sql
-- Сессия 1
BEGIN ISOLATION LEVEL REPEATABLE READ;
SELECT COUNT(*) FROM person_visits; -- 10

-- Сессия 2 делает INSERT...

-- Сессия 1
SELECT COUNT(*) FROM person_visits; -- всё ещё 10
COMMIT;
SELECT COUNT(*) FROM person_visits; -- теперь 11
```

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
