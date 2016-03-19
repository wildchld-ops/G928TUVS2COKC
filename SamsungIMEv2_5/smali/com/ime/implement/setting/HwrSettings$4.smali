.class Lcom/ime/implement/setting/HwrSettings$4;
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

    iput-object p1, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->mXt9HwrRecogType:Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;
    invoke-static {v3}, Lcom/ime/implement/setting/HwrSettings;->access$400(Lcom/ime/implement/setting/HwrSettings;)Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->mHandwritingRecogTypeEntries:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/ime/implement/setting/HwrSettings;->access$300(Lcom/ime/implement/setting/HwrSettings;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/ime/implement/setting/Xt9HwrRecogTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    iget-object v3, v3, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    # getter for: Lcom/ime/implement/setting/HwrSettings;->sharedPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/ime/implement/setting/HwrSettings;->access$500(Lcom/ime/implement/setting/HwrSettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v6

    :cond_1
    if-ne v1, v6, :cond_0

    iget-object v3, p0, Lcom/ime/implement/setting/HwrSettings$4;->this$0:Lcom/ime/implement/setting/HwrSettings;

    iget-object v3, v3, Lcom/ime/implement/setting/HwrSettings;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_XT9_HWR_RECOG_TYPE"

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0
.end method
