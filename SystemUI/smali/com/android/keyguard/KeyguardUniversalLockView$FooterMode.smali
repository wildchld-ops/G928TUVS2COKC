.class final enum Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;
.super Ljava/lang/Enum;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

.field public static final enum BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

.field public static final enum ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

.field public static final enum Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

.field public static final enum VerifyUnlocked:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    const-string v1, "ForgotLockUniversal"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    const-string v1, "BackupPIN"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    const-string v1, "VerifyUnlocked"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->$VALUES:[Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->$VALUES:[Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    return-object v0
.end method
