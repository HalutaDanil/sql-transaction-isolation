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

| Exercise | Topic | Isolation Level |\n|----------|-------|----------------|\n| ex00 | Dirty Read | READ UNCOMMITTED |\n| ex01 | Non-repeatable Read | READ COMMITTED |\n| ex02 | Phantom Read | REPEATABLE READ |\n| ex03 | Lost Update | SERIALIZABLE |\n| ex04 | Practical demonstration | All levels |\n| ex05 | FOR UPDATE | Row locks |\n| ex06 | Deadlock | Mutual locks |\n| ex07 | SKIP LOCKED | SQL queues |

### 🚀 Quick Start

```sql\n-- Session 1\nBEGIN ISOLATION LEVEL REPEATABLE READ;\nSELECT COUNT(*) FROM person_visits; -- 10\n\n-- Session 2 inserts...\n\n-- Session 1\nSELECT COUNT(*) FROM person_visits; -- still 10\nCOMMIT;\nSELECT COUNT(*) FROM person_visits; -- now 11\n```

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

| Задача | Тема | Уровень изоляции |\n|--------|------|-----------------|\n| ex00 | Грязное чтение | READ UNCOMMITTED |\n| ex01 | Неповторяющееся чтение | READ COMMITTED |\n| ex02 | Фантомное чтение | REPEATABLE READ |\n| ex03 | Потерянное обновление | SERIALIZABLE |\n| ex04 | Демонстрация на практике | Все уровни |\n| ex05 | FOR UPDATE | Блокировки строк |\n| ex06 | Deadlock | Взаимные блокировки |\n| ex07 | SKIP LOCKED | Очереди на SQL |

### 🚀 Быстрый старт

```sql\n-- Сессия 1\nBEGIN ISOLATION LEVEL REPEATABLE READ;\nSELECT COUNT(*) FROM person_visits; -- 10\n\n-- Сессия 2 делает INSERT...\n\n-- Сессия 1\nSELECT COUNT(*) FROM person_visits; -- всё ещё 10\nCOMMIT;\nSELECT COUNT(*) FROM person_visits; -- теперь 11\n```

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
