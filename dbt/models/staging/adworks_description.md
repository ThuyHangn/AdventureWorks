{% docs Pay_Frequency %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| 1              | Salary receive monthly                           |
| 2              | Salary receive biweekly                          |

{% enddocs %}

{% docs Emp_CurrentFlag %}

One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| 0              | Inactive                                         |
| 1              | Active                                           |

{% enddocs %}

{% docs shift %}

One of the following values: 

| ID      | Name      | Start time             | End time           |
|---------|-----------|------------------------|--------------------|
| 1       | Day       | 07:00                  | 15:00              |
| 2       | Evening   | 15:00                  | 23:00              |
| 3       | Night     | 23:00                  | 07:00              |

{% enddocs %}

{% docs person_type %}

One of the following values

| Values       | Description                    |
|--------------|--------------------------------|
| SC           | Store Contact                  |
| IN           | Individual (retail) customer   |
| SP           | Sales person                   |
| EM           | Employee (non-sales)           |
| VC           | Vendor Contact                 |
| GC           | General Contact                |

{% enddocs %}


{% docs EmailPromotion %}

One of the following values: 

| values | definition                                                                   |
|--------|------------------------------------------------------------------------------|
| 0      | Contact does not wish to receive e-mail promotions                           |
| 1      | Contact wish to receive e-mail promotions from AdWorks                       |
| 2      | Contact wish to receive e-mail promotions from AdWorks and selected partners |

{% enddocs %}