.class public final Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;
.super Lcom/android/internal/policy/IKeyguardShowCallback$Stub;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyguardWallpaperShowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "KeyguardWallpaperShowCallback **** SHOWN CALLED ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;->screenOn()V

    :cond_0
    return-void
.end method
