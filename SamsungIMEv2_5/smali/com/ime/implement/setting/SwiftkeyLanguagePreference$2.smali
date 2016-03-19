.class Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "allow_app_permission"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "use_network_connection"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "use_network_connection_checkbox"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$300(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "first_use_network_connections_execution"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    # getter for: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$400()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->showUseNetworkConnectionsDialog()V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->downloadlanguagepack()V
    invoke-static {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->access$500(Lcom/ime/implement/setting/SwiftkeyLanguagePreference;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/SwiftkeyLanguagePreference$2;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagePreference;

    invoke-virtual {v4}, Lcom/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadGuideDialog()V

    goto :goto_0
.end method
