.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;
.super Landroid/os/CountDownTimer;
.source "AbstractEmoticonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->onKeyRepeat()V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    sget-wide v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->MAX_REPEAT_COUNT_TIME:J

    sub-long v0, v2, p1

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;

    iget-wide v2, v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->mKeyRepeatStartTimeout:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;

    invoke-virtual {v2}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$DeleteKeyOnTouchListener;->onKeyRepeat()V

    goto :goto_0
.end method
