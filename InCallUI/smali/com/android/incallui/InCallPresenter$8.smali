.class Lcom/android/incallui/InCallPresenter$8;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->onCircularRevealStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    const-string v0, "Showing InCallActivity after circular reveal"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$8;->this$0:Lcom/android/incallui/InCallPresenter;

    # setter for: Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z
    invoke-static {v0, v3}, Lcom/android/incallui/InCallPresenter;->access$702(Lcom/android/incallui/InCallPresenter;Z)Z

    return-void
.end method
