.class Lcom/sec/daliviews/views/Filter$RequestArguments;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestArguments"
.end annotation


# instance fields
.field constraint:Ljava/lang/CharSequence;

.field filterListener:Lcom/sec/daliviews/views/Filter$FilterListener;

.field results:Lcom/sec/daliviews/views/Filter$FilterResults;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/daliviews/views/Filter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/Filter$RequestArguments;-><init>()V

    return-void
.end method
