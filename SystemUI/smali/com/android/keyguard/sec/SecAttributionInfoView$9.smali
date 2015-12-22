.class Lcom/android/keyguard/sec/SecAttributionInfoView$9;
.super Landroid/database/ContentObserver;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->registerLogoImageFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$9;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$9;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$1100(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
