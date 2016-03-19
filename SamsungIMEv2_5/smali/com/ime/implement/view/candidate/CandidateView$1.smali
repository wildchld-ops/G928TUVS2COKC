.class Lcom/ime/implement/view/candidate/CandidateView$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateView;->getVoiceButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/candidate/CandidateView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/candidate/CandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateView$1;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "Jinseok"

    const-string v1, "CandidateView - OntouchListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
