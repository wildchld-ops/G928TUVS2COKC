.class Lcom/samsung/android/personalpage/service/PersonalPageService$3$1;
.super Ljava/lang/Object;
.source "PersonalPageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/personalpage/service/PersonalPageService$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$3$1;->this$1:Lcom/samsung/android/personalpage/service/PersonalPageService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$3$1;->this$1:Lcom/samsung/android/personalpage/service/PersonalPageService$3;

    iget-object v0, v0, Lcom/samsung/android/personalpage/service/PersonalPageService$3;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    # invokes: Lcom/samsung/android/personalpage/service/PersonalPageService;->requestLockScreenUnlock()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->access$700(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    return-void
.end method
