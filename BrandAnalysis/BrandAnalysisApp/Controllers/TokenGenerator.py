from django.contrib.auth.tokens import PasswordResetTokenGenerator
import six
class TokenGenerator(PasswordResetTokenGenerator):
    def _make_hash_value(self, user, timestamp):
        return (
            six.text_type(user.uemail) + six.text_type(timestamp) +
            six.text_type(user.uactivated)
        )
account_activation_token = TokenGenerator()