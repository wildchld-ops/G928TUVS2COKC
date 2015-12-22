.class public Lcom/android/incallui/SecEventAnswerTriggered;
.super Ljava/lang/Object;
.source "SecEventAnswerTriggered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecEventAnswerTriggered$STATE;
    }
.end annotation


# instance fields
.field private state:Lcom/android/incallui/SecEventAnswerTriggered$STATE;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecEventAnswerTriggered$STATE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/SecEventAnswerTriggered;->state:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    return-void
.end method


# virtual methods
.method public getState()Lcom/android/incallui/SecEventAnswerTriggered$STATE;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecEventAnswerTriggered;->state:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    return-object v0
.end method
