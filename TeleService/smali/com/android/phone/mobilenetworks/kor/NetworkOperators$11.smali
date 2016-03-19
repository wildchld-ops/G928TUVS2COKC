.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z
    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$11;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setIMSISelection()V
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto :goto_0
.end method
