.class Lcom/samsung/android/personalpage/service/PersonalPageService$9;
.super Ljava/lang/Object;
.source "PersonalPageService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$9;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "PersonalPageService"

    const-string v1, "Popup: onDismiss"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$9;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$9;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
