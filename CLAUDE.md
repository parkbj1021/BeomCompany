## Skill routing

When the user's request matches an available skill, ALWAYS invoke it using the Skill
tool as your FIRST action. Do NOT answer directly, do NOT use other tools first.
The skill has specialized workflows that produce better results than ad-hoc answers.

Key routing rules:
- Web testing, playwright, site QA, find bugs on a URL → invoke beom-test
- TDD plan, clean architecture plan, coding plan for a feature → invoke beom-plan
- Codebase review, architecture review, code quality check → invoke beom-codebase-review
- UI/UX design review, visual audit → invoke beom-design
- Full orchestration, multi-skill task → invoke beom-ceo
- Ship, deploy, push, create PR → invoke beom-ship
- Requirements clarification, scope definition → invoke beom-clarify
- End session, save learnings, version-up → invoke beom-end
- Two-phase plan+execute → invoke beom-smart-run
- Session Q&A to English dialog → invoke convo-maker
