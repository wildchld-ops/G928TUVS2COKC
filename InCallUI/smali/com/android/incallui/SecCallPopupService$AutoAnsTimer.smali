.class Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecCallPopupService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AutoAnsTimer onFinish "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->answeringMode()V
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$4100(Lcom/android/incallui/SecCallPopupService;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/SecCallPopupService;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I
    invoke-static {v0, v1}, Lcom/android/incallui/SecCallPopupService;->access$4202(Lcom/android/incallui/SecCallPopupService;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoAnsTimer onTick elapsedAMTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$4200(Lcom/android/incallui/SecCallPopupService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/SecCallPopupService;

    # operator++ for: Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I
    invoke-static {v0}, Lcom/android/incallui/SecCallPopupService;->access$4208(Lcom/android/incallui/SecCallPopupService;)I

    return-void
.end method
