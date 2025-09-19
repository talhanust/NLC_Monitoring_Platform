/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./packages/frontend/src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          navy: '#1A2332',
          blue: '#2563EB',
          light: '#60A5FA'
        },
        success: '#10B981',
        warning: '#F59E0B',
        error: '#EF4444',
        info: '#3B82F6',
        track: '#22C55E',
        risk: '#FACC15',
        critical: '#DC2626',
        complete: '#0EA5E9',
        gray: {
          50: '#F9FAFB',
          100: '#F3F4F6',
          200: '#E5E7EB',
          500: '#6B7280',
          900: '#111827'
        }
      },
      fontFamily: {
        primary: ['Inter', 'sans-serif'],
        mono: ['JetBrains Mono', 'monospace']
      },
      spacing: {
        xs: '2px',
        sm: '4px',
        md: '8px',
        lg: '16px',
        xl: '24px',
        '2xl': '32px',
        '3xl': '48px',
        '4xl': '64px'
      }
    },
  },
  plugins: [],
}
