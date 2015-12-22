.class Lcom/sec/daliviews/views/Filter$ResultsHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/Filter;


# direct methods
.method private constructor <init>(Lcom/sec/daliviews/views/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/Filter$ResultsHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/daliviews/views/Filter;Lcom/sec/daliviews/views/Filter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/Filter$ResultsHandler;-><init>(Lcom/sec/daliviews/views/Filter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/daliviews/views/Filter$RequestArguments;

    iget-object v1, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->filterListener:Lcom/sec/daliviews/views/Filter$FilterListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->filterListener:Lcom/sec/daliviews/views/Filter$FilterListener;

    iget-object v2, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->results:Lcom/sec/daliviews/views/Filter$FilterResults;

    iget v2, v2, Lcom/sec/daliviews/views/Filter$FilterResults;->count:I

    iget-object v3, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->results:Lcom/sec/daliviews/views/Filter$FilterResults;

    iget-object v3, v3, Lcom/sec/daliviews/views/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sec/daliviews/views/Filter$FilterListener;->onFilterComplete(ILjava/lang/Object;)V

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Filter$ResultsHandler;->this$0:Lcom/sec/daliviews/views/Filter;

    iget-object v2, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->results:Lcom/sec/daliviews/views/Filter$FilterResults;

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/Filter;->publishResults(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterResults;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
