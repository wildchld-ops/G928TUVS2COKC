.class Lcom/android/keyguard/sec/SecAttributionInfoView$7;
.super Ljava/lang/Object;
.source "SecAttributionInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # getter for: Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$700(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "just_lock_yahoo_livewallpaper_attribution_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView$7;->this$0:Lcom/android/keyguard/sec/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
