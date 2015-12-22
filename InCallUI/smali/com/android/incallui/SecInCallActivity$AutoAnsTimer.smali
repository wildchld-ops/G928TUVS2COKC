.class Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "SecInCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    const-string v0, "AutoAnsTimer onFinish "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$AutoAnsTimer;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->answeringMode()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
