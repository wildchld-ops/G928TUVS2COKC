.class public Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;
.super Ljava/lang/Object;
.source "FontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/FontEffectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropShadow"
.end annotation


# instance fields
.field public blendingOpacity:F

.field public offset:F

.field public softness:F

.field final synthetic this$0:Lcom/android/keyguard/sec/FontEffectUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/FontEffectUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/FontEffectUtil$DropShadow;->this$0:Lcom/android/keyguard/sec/FontEffectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
