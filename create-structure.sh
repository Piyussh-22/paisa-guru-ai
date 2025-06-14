#!/bin/bash

# PaisaGuruAI - FinTech App Structure Generator
echo "Creating PaisaGuruAI project structure..."

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from your Next.js project root directory."
    exit 1
fi

echo "📁 Found package.json, proceeding with structure creation..."

# Create main directories
mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .vscode
mkdir -p docs/api
mkdir -p docs/deployment
mkdir -p prisma/migrations
mkdir -p public/icons
mkdir -p public/images/avatars
mkdir -p public/images/logos
mkdir -p public/images/illustrations
mkdir -p public/images/placeholders
mkdir -p public/locales/en
mkdir -p public/locales/es

# App Router structure
mkdir -p src/app/\(auth\)/login
mkdir -p src/app/\(auth\)/register
mkdir -p src/app/\(auth\)/forgot-password
mkdir -p src/app/\(dashboard\)/dashboard
mkdir -p src/app/\(dashboard\)/transactions/\[id\]/edit
mkdir -p src/app/\(dashboard\)/transactions/new
mkdir -p src/app/\(dashboard\)/budgets/\[id\]
mkdir -p src/app/\(dashboard\)/budgets/create
mkdir -p src/app/\(dashboard\)/analytics/reports
mkdir -p src/app/\(dashboard\)/analytics/insights
mkdir -p src/app/\(dashboard\)/goals/\[id\]
mkdir -p src/app/\(dashboard\)/settings/profile
mkdir -p src/app/\(dashboard\)/settings/security
mkdir -p src/app/\(dashboard\)/settings/notifications
mkdir -p src/app/\(dashboard\)/settings/billing

# API Routes
mkdir -p src/app/api/auth/\[...nextauth\]
mkdir -p src/app/api/auth/register
mkdir -p src/app/api/auth/verify
mkdir -p src/app/api/users/\[id\]/avatar
mkdir -p src/app/api/transactions/\[id\]
mkdir -p src/app/api/transactions/bulk
mkdir -p src/app/api/transactions/categories
mkdir -p src/app/api/transactions/export
mkdir -p src/app/api/budgets/\[id\]/progress
mkdir -p src/app/api/analytics/spending
mkdir -p src/app/api/analytics/income
mkdir -p src/app/api/analytics/trends
mkdir -p src/app/api/goals/\[id\]
mkdir -p src/app/api/ai/chat
mkdir -p src/app/api/ai/predictions
mkdir -p src/app/api/ai/insights
mkdir -p src/app/api/uploads/receipts
mkdir -p src/app/api/uploads/documents
mkdir -p src/app/api/notifications/push
mkdir -p src/app/api/webhooks/stripe
mkdir -p src/app/api/webhooks/plaid

# Components structure
mkdir -p src/components/ui
mkdir -p src/components/layout
mkdir -p src/components/forms
mkdir -p src/components/charts
mkdir -p src/components/tables/columns
mkdir -p src/components/modals
mkdir -p src/components/cards
mkdir -p src/components/auth
mkdir -p src/components/ai
mkdir -p src/components/navigation
mkdir -p src/components/feedback
mkdir -p src/components/providers
mkdir -p src/components/common

# Lib structure
mkdir -p src/lib/api
mkdir -p src/lib/auth
mkdir -p src/lib/database
mkdir -p src/lib/validations
mkdir -p src/lib/utils
mkdir -p src/lib/ai
mkdir -p src/lib/email
mkdir -p src/lib/storage
mkdir -p src/lib/notifications

# Store structure
mkdir -p src/store/slices
mkdir -p src/store/api
mkdir -p src/store/middleware

# Other directories
mkdir -p src/hooks
mkdir -p src/types
mkdir -p src/features/authentication/components
mkdir -p src/features/authentication/hooks
mkdir -p src/features/authentication/services
mkdir -p src/features/authentication/types
mkdir -p src/features/authentication/utils
mkdir -p src/features/transactions/components
mkdir -p src/features/transactions/hooks
mkdir -p src/features/transactions/services
mkdir -p src/features/transactions/types
mkdir -p src/features/transactions/utils
mkdir -p src/features/budgets/components
mkdir -p src/features/budgets/hooks
mkdir -p src/features/budgets/services
mkdir -p src/features/budgets/types
mkdir -p src/features/budgets/utils
mkdir -p src/features/analytics/components
mkdir -p src/features/analytics/hooks
mkdir -p src/features/analytics/services
mkdir -p src/features/analytics/types
mkdir -p src/features/analytics/utils
mkdir -p src/features/ai-assistant/components
mkdir -p src/features/ai-assistant/hooks
mkdir -p src/features/ai-assistant/services
mkdir -p src/features/ai-assistant/types
mkdir -p src/features/ai-assistant/utils
mkdir -p src/styles

# Test structure
mkdir -p tests/__mocks__
mkdir -p tests/components
mkdir -p tests/pages
mkdir -p tests/api
mkdir -p tests/utils

# Scripts directory
mkdir -p scripts

# Create GitHub workflow files
touch .github/workflows/ci.yml
touch .github/workflows/deploy-preview.yml
touch .github/workflows/deploy-production.yml
touch .github/ISSUE_TEMPLATE/bug_report.md
touch .github/ISSUE_TEMPLATE/feature_request.md
touch .github/pull_request_template.md

# VS Code files
touch .vscode/settings.json
touch .vscode/extensions.json
touch .vscode/launch.json

# Documentation files
touch docs/api/authentication.md
touch docs/api/transactions.md
touch docs/api/user-management.md
touch docs/deployment/vercel-setup.md
touch docs/deployment/database-migration.md
touch docs/ARCHITECTURE.md
touch docs/CONTRIBUTING.md
touch docs/README.md

# Prisma files
touch prisma/schema.prisma
touch prisma/seed.ts

# Public files
touch public/icons/apple-touch-icon.png
touch public/icons/favicon.ico
touch public/icons/manifest.json
touch public/robots.txt

# App Router files
touch src/app/\(auth\)/login/page.tsx
touch src/app/\(auth\)/login/loading.tsx
touch src/app/\(auth\)/register/page.tsx
touch src/app/\(auth\)/register/loading.tsx
touch src/app/\(auth\)/forgot-password/page.tsx
touch src/app/\(auth\)/layout.tsx
touch src/app/\(dashboard\)/dashboard/page.tsx
touch src/app/\(dashboard\)/dashboard/loading.tsx
touch src/app/\(dashboard\)/dashboard/error.tsx
touch src/app/\(dashboard\)/transactions/page.tsx
touch src/app/\(dashboard\)/transactions/\[id\]/page.tsx
touch src/app/\(dashboard\)/transactions/\[id\]/edit/page.tsx
touch src/app/\(dashboard\)/transactions/new/page.tsx
touch src/app/\(dashboard\)/budgets/page.tsx
touch src/app/\(dashboard\)/budgets/\[id\]/page.tsx
touch src/app/\(dashboard\)/budgets/create/page.tsx
touch src/app/\(dashboard\)/analytics/page.tsx
touch src/app/\(dashboard\)/analytics/reports/page.tsx
touch src/app/\(dashboard\)/analytics/insights/page.tsx
touch src/app/\(dashboard\)/goals/page.tsx
touch src/app/\(dashboard\)/goals/\[id\]/page.tsx
touch src/app/\(dashboard\)/settings/page.tsx
touch src/app/\(dashboard\)/settings/profile/page.tsx
touch src/app/\(dashboard\)/settings/security/page.tsx
touch src/app/\(dashboard\)/settings/notifications/page.tsx
touch src/app/\(dashboard\)/settings/billing/page.tsx
touch src/app/\(dashboard\)/layout.tsx

# API Route files
touch src/app/api/auth/\[...nextauth\]/route.ts
touch src/app/api/auth/register/route.ts
touch src/app/api/auth/verify/route.ts
touch src/app/api/users/route.ts
touch src/app/api/users/\[id\]/route.ts
touch src/app/api/users/\[id\]/avatar/route.ts
touch src/app/api/transactions/route.ts
touch src/app/api/transactions/\[id\]/route.ts
touch src/app/api/transactions/bulk/route.ts
touch src/app/api/transactions/categories/route.ts
touch src/app/api/transactions/export/route.ts
touch src/app/api/budgets/route.ts
touch src/app/api/budgets/\[id\]/route.ts
touch src/app/api/budgets/\[id\]/progress/route.ts
touch src/app/api/analytics/spending/route.ts
touch src/app/api/analytics/income/route.ts
touch src/app/api/analytics/trends/route.ts
touch src/app/api/goals/route.ts
touch src/app/api/goals/\[id\]/route.ts
touch src/app/api/ai/chat/route.ts
touch src/app/api/ai/predictions/route.ts
touch src/app/api/ai/insights/route.ts
touch src/app/api/uploads/receipts/route.ts
touch src/app/api/uploads/documents/route.ts
touch src/app/api/notifications/route.ts
touch src/app/api/notifications/push/route.ts
touch src/app/api/webhooks/stripe/route.ts
touch src/app/api/webhooks/plaid/route.ts

# Root app files
touch src/app/globals.css
touch src/app/layout.tsx
touch src/app/loading.tsx
touch src/app/error.tsx
touch src/app/not-found.tsx
touch src/app/page.tsx

# UI Components
touch src/components/ui/button.tsx
touch src/components/ui/input.tsx
touch src/components/ui/card.tsx
touch src/components/ui/dialog.tsx
touch src/components/ui/dropdown-menu.tsx
touch src/components/ui/form.tsx
touch src/components/ui/table.tsx
touch src/components/ui/toast.tsx
touch src/components/ui/avatar.tsx
touch src/components/ui/badge.tsx
touch src/components/ui/skeleton.tsx
touch src/components/ui/index.ts

# Layout Components
touch src/components/layout/Header.tsx
touch src/components/layout/Sidebar.tsx
touch src/components/layout/Footer.tsx
touch src/components/layout/Navbar.tsx
touch src/components/layout/MobileMenu.tsx
touch src/components/layout/Breadcrumbs.tsx

# Form Components
touch src/components/forms/LoginForm.tsx
touch src/components/forms/RegisterForm.tsx
touch src/components/forms/TransactionForm.tsx
touch src/components/forms/BudgetForm.tsx
touch src/components/forms/ProfileForm.tsx
touch src/components/forms/ContactForm.tsx

# Chart Components
touch src/components/charts/BarChart.tsx
touch src/components/charts/LineChart.tsx
touch src/components/charts/PieChart.tsx
touch src/components/charts/DonutChart.tsx
touch src/components/charts/AreaChart.tsx
touch src/components/charts/SpendingChart.tsx

# Table Components
touch src/components/tables/TransactionTable.tsx
touch src/components/tables/BudgetTable.tsx
touch src/components/tables/DataTable.tsx
touch src/components/tables/columns/transaction-columns.tsx
touch src/components/tables/columns/budget-columns.tsx

# Modal Components
touch src/components/modals/ConfirmModal.tsx
touch src/components/modals/TransactionModal.tsx
touch src/components/modals/BudgetModal.tsx
touch src/components/modals/SettingsModal.tsx

# Card Components
touch src/components/cards/StatsCard.tsx
touch src/components/cards/TransactionCard.tsx
touch src/components/cards/BudgetCard.tsx
touch src/components/cards/GoalCard.tsx
touch src/components/cards/DashboardCard.tsx

# Auth Components
touch src/components/auth/AuthGuard.tsx
touch src/components/auth/LoginButton.tsx
touch src/components/auth/LogoutButton.tsx
touch src/components/auth/SocialLogin.tsx
touch src/components/auth/ProtectedRoute.tsx

# AI Components
touch src/components/ai/ChatBot.tsx
touch src/components/ai/ChatMessage.tsx
touch src/components/ai/PredictionCard.tsx
touch src/components/ai/InsightCard.tsx
touch src/components/ai/AIAssistant.tsx

# Navigation Components
touch src/components/navigation/Pagination.tsx
touch src/components/navigation/TabNavigation.tsx
touch src/components/navigation/Stepper.tsx
touch src/components/navigation/BreadcrumbNav.tsx

# Feedback Components
touch src/components/feedback/LoadingSpinner.tsx
touch src/components/feedback/ErrorBoundary.tsx
touch src/components/feedback/EmptyState.tsx
touch src/components/feedback/SuccessMessage.tsx
touch src/components/feedback/NotificationBell.tsx

# Provider Components
touch src/components/providers/ThemeProvider.tsx
touch src/components/providers/AuthProvider.tsx
touch src/components/providers/ToastProvider.tsx
touch src/components/providers/QueryProvider.tsx

# Common Components
touch src/components/common/Logo.tsx
touch src/components/common/SearchBar.tsx
touch src/components/common/FilterDropdown.tsx
touch src/components/common/DatePicker.tsx
touch src/components/common/CurrencyInput.tsx
touch src/components/common/FileUpload.tsx

# Lib files
touch src/lib/api/client.ts
touch src/lib/api/endpoints.ts
touch src/lib/api/types.ts
touch src/lib/api/error-handler.ts
touch src/lib/auth/config.ts
touch src/lib/auth/providers.ts
touch src/lib/auth/callbacks.ts
touch src/lib/auth/middleware.ts
touch src/lib/database/connection.ts
touch src/lib/database/migrations.ts
touch src/lib/database/seed-data.ts
touch src/lib/validations/auth.ts
touch src/lib/validations/transaction.ts
touch src/lib/validations/budget.ts
touch src/lib/validations/user.ts
touch src/lib/validations/common.ts
touch src/lib/utils/format.ts
touch src/lib/utils/currency.ts
touch src/lib/utils/date.ts
touch src/lib/utils/export.ts
touch src/lib/utils/encryption.ts
touch src/lib/utils/constants.ts
touch src/lib/utils/helpers.ts
touch src/lib/ai/client.ts
touch src/lib/ai/prompts.ts
touch src/lib/ai/types.ts
touch src/lib/ai/formatters.ts
touch src/lib/email/client.ts
touch src/lib/email/templates.ts
touch src/lib/email/types.ts
touch src/lib/storage/cloudinary.ts
touch src/lib/storage/supabase-storage.ts
touch src/lib/storage/upload-helpers.ts
touch src/lib/notifications/client.ts
touch src/lib/notifications/types.ts
touch src/lib/notifications/templates.ts
touch src/lib/fonts.ts
touch src/lib/cn.ts
touch src/lib/config.ts

# Store files
touch src/store/slices/authSlice.ts
touch src/store/slices/transactionSlice.ts
touch src/store/slices/budgetSlice.ts
touch src/store/slices/userSlice.ts
touch src/store/slices/notificationSlice.ts
touch src/store/slices/uiSlice.ts
touch src/store/api/authApi.ts
touch src/store/api/transactionApi.ts
touch src/store/api/budgetApi.ts
touch src/store/api/userApi.ts
touch src/store/api/analyticsApi.ts
touch src/store/api/aiApi.ts
touch src/store/middleware/logger.ts
touch src/store/middleware/errorHandler.ts
touch src/store/store.ts
touch src/store/provider.tsx
touch src/store/hooks.ts

# Hook files
touch src/hooks/useAuth.ts
touch src/hooks/useLocalStorage.ts
touch src/hooks/useDebounce.ts
touch src/hooks/useMediaQuery.ts
touch src/hooks/useToast.ts
touch src/hooks/useTransaction.ts
touch src/hooks/useBudget.ts
touch src/hooks/useAnalytics.ts
touch src/hooks/useAI.ts
touch src/hooks/useUpload.ts
touch src/hooks/usePermissions.ts

# Type files
touch src/types/auth.ts
touch src/types/user.ts
touch src/types/transaction.ts
touch src/types/budget.ts
touch src/types/analytics.ts
touch src/types/api.ts
touch src/types/ui.ts
touch src/types/ai.ts
touch src/types/database.ts
touch src/types/global.ts

# Style files
touch src/styles/globals.css
touch src/styles/components.css
touch src/styles/utilities.css

# Test files
touch tests/__mocks__/next-auth.ts
touch tests/__mocks__/prisma.ts
touch tests/components/Header.test.tsx
touch tests/components/TransactionForm.test.tsx
touch tests/components/BudgetCard.test.tsx
touch tests/pages/dashboard.test.tsx
touch tests/pages/login.test.tsx
touch tests/api/auth.test.ts
touch tests/api/transactions.test.ts
touch tests/utils/format.test.ts
touch tests/utils/currency.test.ts
touch tests/setup.ts
touch tests/jest.config.js

# Script files
touch scripts/build.sh
touch scripts/deploy.sh
touch scripts/db-migrate.ts
touch scripts/db-seed.ts
touch scripts/generate-types.ts

# Configuration files
touch .env.local
touch .env.example
touch .gitignore
touch .eslintrc.json
touch .prettierrc
touch .prettierignore
touch tailwind.config.ts
touch tsconfig.json
touch next.config.js
touch package.json
touch yarn.lock
touch components.json
touch jest.config.js
touch middleware.ts
touch README.md
touch LICENSE

echo "✅ PaisaGuruAI project structure created successfully!"
echo "📁 Total directories and files created"
echo "🚀 Ready to start development!"