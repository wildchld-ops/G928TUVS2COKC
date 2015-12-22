.class public final enum Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;
.super Ljava/lang/Enum;
.source "SecKeyguardCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortcutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

.field public static final enum CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

.field public static final enum NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

.field public static final enum OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

.field public static final enum PHONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->PHONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->PHONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->$VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;
    .locals 1

    const-class v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->$VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    invoke-virtual {v0}, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    return-object v0
.end method
