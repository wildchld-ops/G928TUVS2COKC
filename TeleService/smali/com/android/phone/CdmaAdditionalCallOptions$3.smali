.class Lcom/android/phone/CdmaAdditionalCallOptions$3;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange - mAutoAreaCodeButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$300(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$400(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method
