.class Lcom/ime/implement/setting/AutoReplacementSettingsFragment$4;
.super Ljava/lang/Object;
.source "AutoReplacementSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoReplacementSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$4;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragment$4;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragment;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ime/implement/setting/AutoReplacementSettingsFragment;->access$500(Lcom/ime/implement/setting/AutoReplacementSettingsFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0198

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    return v4
.end method
