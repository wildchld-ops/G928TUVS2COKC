.class Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;
.super Lcom/sec/daliviews/views/ViewRecycler;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterViewRecycler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/AdapterView;


# direct methods
.method private constructor <init>(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;->this$0:Lcom/sec/daliviews/views/AdapterView;

    invoke-direct {p0}, Lcom/sec/daliviews/views/ViewRecycler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/AdapterView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;-><init>(Lcom/sec/daliviews/views/AdapterView;)V

    return-void
.end method


# virtual methods
.method protected getItemView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;->this$0:Lcom/sec/daliviews/views/AdapterView;

    # getter for: Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;
    invoke-static {v0}, Lcom/sec/daliviews/views/AdapterView;->access$000(Lcom/sec/daliviews/views/AdapterView;)Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;->this$0:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/daliviews/views/Adapter;->getView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/AdapterView;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method
