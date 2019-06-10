
export const summaryTabs= [
  ['Not Signed', '/admin'],
  ['Signed', '/admin/rebate_forms/signed'],
  ['Processed', '/admin/rebate_forms/processed'],
  ['Batched', '/admin/batches']
];

export const incomeRows = [
  [
    'nz_superannuation',
    'New Zealand Superannuation'
  ],
  [
    'other_superannuation',
    'Other superannuation'
  ],
  [
    'interest_dividends',
    'Interest or dividends'
  ],
  [
    'wages_salary',
    'Wages or salary'
  ],
  [
    'work_and_income_benefits',
    'Work and Income Benefits'
  ],
  [
    'business_profit',
    'Business profit'
  ],
  [
    'rental_income',
    'Rental income'
  ],
  [
    'overseas_income',
    'Overseas income (in NZD$)'
  ],
];

export const conditionalsFields = [
  {
    id: 'previous_address',
    label: 'Address',
    fullWidth: true
  },
  {
    id: 'settlement_date',
    label: 'Settlement date',
    type: 'date'
  },
  {
    id: 'rates_paid',
    label: 'Rates paid this rating year',
    type: 'number'
  },
  {
    id: 'rates_rebate_received',
    label: 'Rates rebate received?',
    type:'radio'
  },
];
export const customerDetailFields = [
  {
    id:'full_name',
    label: 'Name',
  },
  {
    id:'customer_id',
    label: 'Customer ID (optional)',
    placeholder: '0000000',
  },
  {
    id:'location',
    label: 'Address',
    fullWidth: true
  },
  {
    id:'total_rates',
    label: 'Total rates',
    type: 'number',
    step: 0.01
  },
  {
    id:'valuation_id',
    label: 'Valuation ID (optional)',
    placeholder: '00000 000 00',
  },
  {
    id: 'lived_in_property_1_July',
    label: 'Lived in property 1 July 2018',
    type:'radio'
  },
  {
    id: 'moved_within_rating_year',
    label: 'Moved within rating year',
    type:'radio'
  },
  {
    id:'phone_number',
    label: 'Phone',
    type:'tel',
  },
  {
    id:'email',
    label: 'Email (optional)',
    type:'email',
  },
  {
    id: 'spouse_or_partner',
    label: 'Partner or joint homeowner',
    type:'radio'
  },
  {
    id:'dependants',
    label: 'Dependants',
    type:'number',
    placeholder: '0',
  },
  {
    id:'50%_claimed_expenses',
    label: 'Mostly used for business',
    type:'radio'
  },
  {
    id:'occupation',
    label: 'Occupation',
  },
];
