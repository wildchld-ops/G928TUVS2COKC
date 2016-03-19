.class public Lcom/ime/implement/setting/SpellCheckerSettings;
.super Landroid/app/Activity;
.source "SpellCheckerSettings.java"


# instance fields
.field private fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    return-void
.end method

.method private exitSpellCheckerSettings(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->exitSpellCheckerSettings()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-direct {v0}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-virtual {p0}, Lcom/ime/implement/setting/SpellCheckerSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-virtual {v0}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->exitSpellCheckerSettings()V

    new-instance v0, Lcom/ime/implement/setting/SpellCheckerSettings$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/SpellCheckerSettings$1;-><init>(Lcom/ime/implement/setting/SpellCheckerSettings;)V

    invoke-direct {p0, v0}, Lcom/ime/implement/setting/SpellCheckerSettings;->exitSpellCheckerSettings(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/SpellCheckerSettings;->fragment:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->setShowDialogByHomeKey(Z)Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
