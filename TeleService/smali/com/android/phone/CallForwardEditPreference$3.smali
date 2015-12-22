.class Lcom/android/phone/CallForwardEditPreference$3;
.super Ljava/lang/Object;
.source "CallForwardEditPreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1    # Landroid/widget/TimePicker;
    .param p2    # I
    .param p3    # I

    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ge p2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ge p3, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CallForwardEditPreference;->access$402(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    iput p2, v2, Landroid/text/format/Time;->hour:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    iput p3, v2, Landroid/text/format/Time;->minute:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mStartTime:Landroid/text/format/Time;

    iput-boolean v5, v2, Landroid/text/format/Time;->allDay:Z

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$500(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mEditStart:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$500(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->access$400(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_2
    const-string v2, "CallForwardEditPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTimeSetListener mTimeStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimeStart:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->access$400(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mTimeEnd ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->access$600(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mSelectedButton ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I
    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mSelectedButton:I
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CallForwardEditPreference;->access$602(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    iput p2, v2, Landroid/text/format/Time;->hour:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    iput p3, v2, Landroid/text/format/Time;->minute:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallForwardEditPreference;->mEndTime:Landroid/text/format/Time;

    iput-boolean v5, v2, Landroid/text/format/Time;->allDay:Z

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$700(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mEditEnd:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/CallForwardEditPreference;->access$700(Lcom/android/phone/CallForwardEditPreference;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$3;->this$0:Lcom/android/phone/CallForwardEditPreference;

    # getter for: Lcom/android/phone/CallForwardEditPreference;->mTimeEnd:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->access$600(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
