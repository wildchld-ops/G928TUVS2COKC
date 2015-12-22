.class Lcom/android/systemui/qs/QsDatabaseUtils$4$1;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QsDatabaseUtils$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QsDatabaseUtils$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QsDatabaseUtils$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4$1;->this$1:Lcom/android/systemui/qs/QsDatabaseUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4$1;->this$1:Lcom/android/systemui/qs/QsDatabaseUtils$4;

    iget-object v0, v0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "WifiCalling"

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$500(Lcom/android/systemui/qs/QsDatabaseUtils;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4$1;->this$1:Lcom/android/systemui/qs/QsDatabaseUtils$4;

    iget-object v0, v0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    const-string v1, "notification_panel_active_app_list"

    const-string v2, "WifiCalling"

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$500(Lcom/android/systemui/qs/QsDatabaseUtils;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
