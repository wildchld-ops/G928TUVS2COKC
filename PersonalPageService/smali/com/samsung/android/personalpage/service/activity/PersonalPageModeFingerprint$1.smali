.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;
.super Ljava/lang/Object;
.source "PersonalPageModeFingerprint.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    invoke-static {v0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method
