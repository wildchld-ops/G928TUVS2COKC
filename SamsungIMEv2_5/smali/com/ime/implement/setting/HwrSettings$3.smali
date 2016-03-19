.class Lcom/ime/implement/setting/HwrSettings$3;
.super Ljava/lang/Object;
.source "HwrSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/HwrSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/HwrSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/HwrSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/ime/implement/setting/HwrSettings;->access$200(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/ime/implement/setting/HwrSettings;->access$200(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->mXt9HwrMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/ime/implement/setting/HwrSettings;->access$200(Lcom/ime/implement/setting/HwrSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    iget-object v1, v1, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne v0, v4, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    iget-object v1, v1, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/HwrSettings$3;->this$0:Lcom/ime/implement/setting/HwrSettings;

    iget-object v1, v1, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_XT9_HWR_MODE"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0
.end method
