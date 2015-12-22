.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V

    goto :goto_0
.end method
