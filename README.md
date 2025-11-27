# Monkei API Documentation

Official documentation for the Monkei API - Payment platform with support for PIX, cryptocurrencies (BTC, USDT), and billing management.

## 📚 About the Documentation

This documentation is built with [Mintlify](https://mintlify.com) and covers:

- **Guides**: Quick start guides, authentication, webhooks, rate limits
- **API Reference**: Complete reference for all API endpoints
- **Billing**: Creation and management of bills
- **Coupons**: Discount coupon system
- **Transactions**: Payments via PIX, BTC, and USDT
- **Withdrawals**: Withdrawals to bank accounts and crypto wallets
- **Accounts**: Account management, balance, and limits
- **Health**: Health check endpoints

## 🚀 Local Development

To preview the documentation locally and test your changes:

### Prerequisites

Install the [Mintlify CLI](https://www.npmjs.com/package/mint) globally:

```bash
npm i -g mint
```

### Run Locally

Run the following command at the root of the `documentation` folder, where the `docs.json` file is located:

```bash
mint dev
```

The documentation will be available at `http://localhost:3000`.

### Update CLI

If the development environment is not working, update the CLI:

```bash
mint update
```

## 📁 Documentation Structure

```
documentation/
├── docs.json              # Main Mintlify configuration
├── index.mdx              # Home page
├── quickstart.mdx         # Quick start guide
├── testing.mdx            # Testing guide
├── essentials/           # Essential concepts (auth, webhooks, etc.)
├── billing/              # Billing documentation
├── coupons/              # Coupons documentation
├── transactions/         # Transactions documentation
├── withdrawals/          # Withdrawals documentation
├── accounts/             # Accounts documentation
├── health/               # Health checks documentation
└── api-reference/        # Complete API reference
```

## 📝 Documentation Conventions

### URLs and Authentication

- **Base URL**: `https://api.monkei.co`
- **Authentication**: Use `X-API-Key` header (not `Authorization: Bearer`)
- **Example**:
  ```bash
  curl -X GET https://api.monkei.co/api/v1/balance \
    -H "X-API-Key: sk_live_..."
  ```

### Code Examples

All examples should include:
- **cURL**: For quick tests
- **JavaScript**: For web integrations
- **Python**: For scripts and automation

Some endpoints also include examples in TypeScript, Go, PHP, and Rust.

### Status and Fields

- Use the correct statuses as defined in the API
- Do not include private fields like `account_id` or `event_id` in example responses
- Maintain consistency across different documentation files

## 🚢 Publishing

Changes are automatically published after pushing to the default branch through the Mintlify GitHub App.

### Configuration

The GitHub App must be installed from the [Mintlify dashboard](https://dashboard.mintlify.com/settings/organization/github-app).

## 🐛 Troubleshooting

### Page loads as 404

Make sure you are running the `mint dev` command in the folder that contains the `docs.json` file.

### Development environment not working

Run `mint update` to ensure you have the latest version of the CLI.

### Broken links

Verify that internal links are using the correct path relative to `docs.json` and that pages exist in the navigation structure.

## 📚 Resources

- [Mintlify Documentation](https://mintlify.com/docs)
- [Mintlify Community](https://mintlify.com/community)
- [Monkei Dashboard](https://app.monkei.co)
- [Status Page](https://stats.uptimerobot.com/nAsS6FyoB3)
- [Support](mailto:support@monkei.co)

## 🔗 Useful Links

- **Dashboard**: [app.monkei.co](https://app.monkei.co)
- **Status**: [stats.uptimerobot.com/nAsS6FyoB3](https://stats.uptimerobot.com/nAsS6FyoB3)
- **GitHub**: [github.com/monkei-tech](https://github.com/monkei-tech)
- **Support**: support@monkei.co
