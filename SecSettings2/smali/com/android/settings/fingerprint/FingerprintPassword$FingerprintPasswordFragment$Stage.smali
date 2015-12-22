.class public final enum Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final betaHint:I

.field public final buttonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const v8, 0x7f0a13c0

    const v4, 0x7f0a0216

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0a10b9

    const v5, 0x7f0a13c7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v6, "NeedToConfirm"

    const v9, 0x7f0a0221

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string v9, "ConfirmWrong"

    const v11, 0x7f0a13c1

    const v13, 0x7f0a13c1

    move v10, v14

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    iput p4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    iput p5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->betaHint:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method
