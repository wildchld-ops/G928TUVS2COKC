.class Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
.super Landroid/os/AsyncTask;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockEnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/ChooseLockEnterpriseIdentity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockEnterpriseIdentity;Lcom/android/settings/ChooseLockEnterpriseIdentity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/android/settings/ChooseLockEnterpriseIdentity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v6, -0x2

    const-string v9, "ChooseLockEnterpriseIdentity"

    const-string v10, "PerformUserAuthTask:performUserAuthentication "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    if-nez v9, :cond_6

    new-instance v9, Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-direct {v9}, Lcom/sec/enterprise/identity/AuthenticationConfig;-><init>()V

    iput-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v9, v5}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    const-string v10, "com.sec.android.service.singlesignon"

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v10, "2"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v9}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "PASSWORD_MIN_CHARACTERS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$300(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MAX_CHARACTERS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$400(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_LETTERS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$500(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_UPPERCASE_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$600(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_LOWERCASE_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$700(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_SYMBOLS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$800(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_NUMERIC_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$900(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_NONLETTER_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1000(Lcom/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_HISTORY_LENGTH_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/enterprise/PasswordPolicy;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_COMPLEX_CHARACTERS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/enterprise/PasswordPolicy;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_PATTERN_RESTRICTIONS_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "PASSWORD_MAX_NUMERIC_SEQUENCE_LENGTH_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MAX_CHARACTER_SEQUENCE_LENGTH_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "PASSWORD_MIN_CHARACTER_CHANGE_LENGTH_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/enterprise/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v9, "PASSWORD_FORBIDDEN_STRINGS_KEY"

    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "PASSWORD_MAX_CHARCTER_OCCURENCES_KEY"

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v9, v5}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Landroid/app/enterprise/sso/GenericSSO;
    invoke-static {v9}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/sso/GenericSSO;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v9, v10}, Landroid/app/enterprise/sso/GenericSSO;->performUserAuthentication(Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v7

    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    :cond_4
    return-object v7

    :cond_5
    :try_start_1
    const-string v9, "ChooseLockEnterpriseIdentity"

    const-string v10, "ekm is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v9, "ChooseLockEnterpriseIdentity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecurityException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v9}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v9}, Lcom/sec/enterprise/identity/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    const-string v10, "com.sec.android.service.singlesignon"

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string v10, "4"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Landroid/app/enterprise/sso/GenericSSOConstants;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # invokes: Lcom/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V
    invoke-static {v3, v1}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1500(Lcom/android/settings/ChooseLockEnterpriseIdentity;I)V

    :goto_1
    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void

    :cond_0
    sget-object v3, Landroid/app/enterprise/sso/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    # invokes: Lcom/android/settings/ChooseLockEnterpriseIdentity;->validatePassword(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1300(Lcom/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v3, p1}, Lcom/sec/enterprise/identity/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Landroid/app/enterprise/sso/GenericSSO;
    invoke-static {v3}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1200(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/app/enterprise/sso/GenericSSO;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/sec/enterprise/identity/AuthenticationConfig;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/sso/GenericSSO;->setUpdatedAuthenticationConfig(Lcom/sec/enterprise/identity/AuthenticationConfig;)Z

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v4, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    # invokes: Lcom/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1400(Lcom/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # getter for: Lcom/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$100(Lcom/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/android/settings/ChooseLockEnterpriseIdentity;

    # invokes: Lcom/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V
    invoke-static {v3, v1}, Lcom/android/settings/ChooseLockEnterpriseIdentity;->access$1500(Lcom/android/settings/ChooseLockEnterpriseIdentity;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
