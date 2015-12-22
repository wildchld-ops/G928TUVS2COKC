.class Lcom/android/phone/InternationalEnhanced4GLTE$7;
.super Ljava/lang/Object;
.source "InternationalEnhanced4GLTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InternationalEnhanced4GLTE;->onInternationalDataClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InternationalEnhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InternationalEnhanced4GLTE$7;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE$7;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # getter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$900(Lcom/android/phone/InternationalEnhanced4GLTE;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE$7;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # setter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mOkClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$702(Lcom/android/phone/InternationalEnhanced4GLTE;Z)Z

    return-void
.end method
