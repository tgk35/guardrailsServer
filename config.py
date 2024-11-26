from guardrails import Guard
from guardrails.hub import DetectPII
guard = Guard().use(DetectPII, ["EMAIL_ADDRESS", "PHONE_NUMBER"], "exception") 
guard.name = '=detectpii-guard'
print("GUARD PARAMETERS UNFILLED! UPDATE THIS FILE!") 
