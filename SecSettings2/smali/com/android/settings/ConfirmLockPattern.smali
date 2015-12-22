.class public Lcom/android/settings/ConfirmLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$1;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/ConfirmLockPattern$Stage;,
        Lcom/android/settings/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# static fields
.field private static mFromPersonalPage:Z

.field private static mPm:Landroid/os/PersonaManager;

.field private static mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    sput-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ConfirmLockPattern;->mPm:Landroid/os/PersonaManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/os/PersonaManager;
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern;->mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ConfirmLockPattern$Stage;)Lcom/android/settings/ConfirmLockPattern$Stage;
    .locals 0

    sput-object p0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_personal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    const v1, 0x7f0a074f

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00c4

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->setTheme(I)V

    const-string v1, "persona"

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Lcom/android/settings/ConfirmLockPattern;->mPm:Landroid/os/PersonaManager;

    return-void
.end method
