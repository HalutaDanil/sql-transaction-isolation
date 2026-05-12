<div align="center">

# SQL Transaction Isolation

**[English](#english) | [Русский](#русский)**

</div>

---

<a name="english"></a>
## 🇬🇧 English

Practical exploration of transaction isolation levels and the anomalies they prevent (or allow). Understanding this is critical for building reliable concurrent systems.

### What was done

| Task | What & Why |
|------|-----------|
| Simple Transaction | Wrapped operations in `BEGIN ... COMMIT`. Established the baseline of atomic execution. |
| Lost Update | Reproduced the lost update anomaly. Two transactions overwrite each other's changes without awareness. |
| Lost Update at Repeatable Read | Showed how `REPEATABLE READ` in PostgreSQL prevents lost updates via automatic retries. |
| Non-Repeatable Reads | Demonstrated that `READ COMMITTED` allows a row to change between two reads in the same transaction. |
| Non-Repeatable Reads at Serializable | Showed that `SERIALIZABLE` prevents this by treating the transaction as a snapshot. |
| Phantom Reads | Reproduced phantom reads: new rows appearing between queries in `READ COMMITTED`. |
| Phantom Reads at Repeatable Read | Showed that `REPEATABLE READ` in PostgreSQL prevents phantoms using predicate locks. |
| Deadlock | Created a circular lock dependency between two transactions. Learned how PostgreSQL detects and resolves deadlocks. |

### Key takeaways
- **Higher isolation = fewer anomalies = lower concurrency**. There is no free lunch.
- PostgreSQL's `READ COMMITTED` is the default and a good balance for most applications.
- `SERIALIZABLE` is the safest but can cause serialization failures that require application-level retry logic.
- Deadlocks are inevitable in concurrent systems; the database breaks them, but the application must retry.

### Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

---

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=rect&color=0:58a6ff,50:1f6feb,100:0969da&height=2&section=header&text=&fontSize=1"/>
</div>

<a name="русский"></a>
## 🇷🇺 Русский

Практическое исследование уровней изоляции транзакций и аномалий, которые они предотвращают (или допускают). Понимание этого критично для построения надёжных конкурентных систем.

### Что было сделано

| Задача | Что и зачем |
|--------|-------------|
| Простая транзакция | Оборачивание операций в `BEGIN ... COMMIT`. Базовая атомарность выполнения. |
| Lost Update | Воспроизведение аномалии потерянного обновления. Две транзакции перезаписывают изменения друг друга, не зная об этом. |
| Lost Update на Repeatable Read | Показано, как `REPEATABLE READ` в PostgreSQL предотвращает потерянные обновления через автоматические retries. |
| Неповторяющееся чтение | Продемонстрировано, что `READ COMMITTED` позволяет строке измениться между двумя чтениями в одной транзакции. |
| Неповторяющееся чтение на Serializable | Показано, что `SERIALIZABLE` предотвращает это, трактуя транзакцию как снапшот. |
| Фантомное чтение | Воспроизведение фантомов: появление новых строк между запросами в `READ COMMITTED`. |
| Фантомное чтение на Repeatable Read | Показано, что `REPEATABLE READ` в PostgreSQL предотвращает фантомы через predicate locks. |
| Deadlock | Создана циклическая зависимость блокировок между двумя транзакциями. Изучено, как PostgreSQL обнаруживает и разрешает deadlocks. |

### Ключевые выводы
- **Высшая изоляция = меньше аномалий = ниже конкурентность**. Бесплатных решений не бывает.
- `READ COMMITTED` в PostgreSQL — дефолтный и хороший баланс для большинства приложений.
- `SERIALIZABLE` — самый безопасный, но может вызывать serialization failures, требующие retry-логики на уровне приложения.
- Deadlocks неизбежны в конкурентных системах; база их разрывает, но приложение должно retry.

### Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white) ![SQL](https://img.shields.io/badge/SQL-336791?style=flat-square)

---

<div align="center">

*Project from portfolio | Проект из портфолио*

</div>
