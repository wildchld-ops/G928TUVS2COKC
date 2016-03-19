.class Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;
.super Landroid/database/ContentObserver;
.source "DefaultSoundEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/effect/DefaultSoundEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultKeySoundChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/effect/DefaultSoundEffectController;


# direct methods
.method public constructor <init>(Lcom/ime/implement/effect/DefaultSoundEffectController;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;->this$0:Lcom/ime/implement/effect/DefaultSoundEffectController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/effect/DefaultSoundEffectController$DefaultKeySoundChangeObserver;->this$0:Lcom/ime/implement/effect/DefaultSoundEffectController;

    invoke-virtual {v0}, Lcom/ime/implement/effect/DefaultSoundEffectController;->setSoundPath()V

    return-void
.end method
