.class Lcom/android/keyguard/KeyguardMessageArea$4;
.super Landroid/database/ContentObserver;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string v0, "KeyguardMessageArea"

    const-string v1, "Observer onChange called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mCached:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$802(Lcom/android/keyguard/KeyguardMessageArea;Z)Z

    return-void
.end method
