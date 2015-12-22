.class Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;
.super Ljava/lang/Object;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/BitmapText$TextCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheBuffer"
.end annotation


# instance fields
.field data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/BitmapText$TextCache;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    return-void
.end method
