.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerList"
.end annotation


# instance fields
.field index:I

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    return-void
.end method
