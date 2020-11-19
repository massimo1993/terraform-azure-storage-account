# Azure Storage Account

Terraform module that provisions a Storage Account on Azure.

![Storage Account](https://tinyurl.com/y3zl7klu)

**Azure storage account** contains all of your Azure Storage data objects:
blobs, files, queues, tables, and disks. The storage account provides a unique
namespace for your Azure Storage data that is accessible from anywhere in the
world over HTTP or HTTPS. Data in your Azure storage account is durable and
highly available, secure, and massively scalable.

The Azure Storage platform includes the following data services:

- **Azure Blobs**: A massively scalable object store for text and binary data.
  Also includes support for big data analytics through Data Lake Storage Gen2.
- **Azure Files**: Managed file shares for cloud or on-premises deployments.
- **Azure Queues**: A messaging store for reliable messaging between application
  components.
- **Azure Tables**: A NoSQL store for schemaless storage of structured data.

Each service is accessed through a storage account.

![Storage Account Architecture](https://tinyurl.com/y24yyxe2)

# Usage

You can find an example on how to incorporate this module in your project under
[examples](https://tinyurl.com/y5ptygwc).

The examples folder consist of the following examples:

- `blob`: example uploading blob files to a storage account.
- `data-lake-filesystem`: example creating a data lake filesystem as a container
   for storage account.
- `file-share`: example creating a storage account with a file share.
- `queue`: example creating a storage account with a queue.
- `table`: example creating a storage account with a table and uploading data
   from exported json into the table.

# License

This repository is licensed under the **GNU General Public License v3.0** - see
the [LICENSE](https://tinyurl.com/y2k3ssat) file for details.

# Acknowledgments

[Storage Introduction](https://tinyurl.com/y78ul3th)
