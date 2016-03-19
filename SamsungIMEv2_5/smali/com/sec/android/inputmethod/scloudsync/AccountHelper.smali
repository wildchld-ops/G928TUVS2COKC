.class public Lcom/sec/android/inputmethod/scloudsync/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field public static final ACCOUNT_TYPE_CLOUD:Ljava/lang/String; = "com.osp.app.signin"

.field public static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "local"

.field private static final PREFERENCES_ACCOUNTS_COUNTER:Ljava/lang/String; = "Counter"

.field private static final PREFERENCES_ACCOUNTS_NAME:Ljava/lang/String; = "AccountName"

.field private static final PREFERENCES_SAMSUNG_ACCOUNTS:Ljava/lang/String; = "SamsungAccounts"

.field public static final SAMSUNG_ACCOUNT_RESULT:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountCounter(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string v1, "SamsungAccounts"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Counter"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getRegisteredSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getSavedAccounts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "SamsungAccounts"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "Counter"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccountName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v4

    :cond_1
    return-object v0
.end method

.method public static getUnsyncedAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/sec/android/inputmethod/scloudsync/AccountHelper;->getRegisteredSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/android/inputmethod/scloudsync/AccountHelper;->getSavedAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    if-nez v4, :cond_2

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_0

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static saveAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/sec/android/inputmethod/scloudsync/AccountHelper;->getAccountCounter(Landroid/content/Context;)I

    move-result v0

    const-string v3, "SamsungAccounts"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "Counter"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
